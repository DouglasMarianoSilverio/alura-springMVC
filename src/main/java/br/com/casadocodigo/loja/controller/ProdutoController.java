package br.com.casadocodigo.loja.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.casadocodigo.loja.daos.ProdutoDAO;
import br.com.casadocodigo.loja.infra.FileSaver;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;
import br.com.casadocodigo.loja.validation.ProdutoValidation;

@Controller
@RequestMapping("/produtos")
public class ProdutoController {
	@Autowired
	ProdutoDAO produtoDAO;
	
	@Autowired
	FileSaver fileSaver;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder)
	{
		binder.addValidators(new ProdutoValidation());
	}
	
	@RequestMapping("form")	
	public ModelAndView form(Produto produto) {
		ModelAndView view = new ModelAndView("produtos/form");
		view.addObject("tipos", TipoPreco.values());
		return view;
	}	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView gravar(MultipartFile sumario  , @Valid Produto produto, BindingResult bindingResult, RedirectAttributes redirectAttributes)
	{
		 if ( bindingResult.hasErrors())
		 {
			 return form(produto);
		 }
		 System.out.println( sumario.getOriginalFilename());
		String sumarioPath = fileSaver.write("arquivos-sumario", sumario);
		produto.setSumarioPath(sumarioPath);
		
		produtoDAO.gravar(produto);
		redirectAttributes.addFlashAttribute("sucesso","Produto Cadastrado com sucesso");
		return new ModelAndView("redirect:produtos") ;
	}
	
	@RequestMapping( method=RequestMethod.GET)
	public ModelAndView listar()
	{
		List<Produto> produtos = produtoDAO.listar();
		ModelAndView modelAndView = new ModelAndView("produtos/lista");
		modelAndView.addObject("produtos",produtos);
		return modelAndView;
	}
	@RequestMapping("/detalhe/{id}")	
	public ModelAndView detalhe(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("produtos/detalhe");
		Produto produto = produtoDAO.find(id);
		modelAndView.addObject("produto",produto);
		return modelAndView;
	}
}
