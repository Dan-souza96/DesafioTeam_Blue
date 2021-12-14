class LoginPage < SitePrism::Page
    set_url 'accounts/login/'
    element :mensagen, :id, 'tabela_previous'
   
    def logar(usuario,senha)
        fill_in 'username', with:usuario
        fill_in 'pass', with:senha
        click_button "Entre"
    end
    

    def verificar_login 
        expect(mensagen.text).to eql 'Anterior'
    end
end
