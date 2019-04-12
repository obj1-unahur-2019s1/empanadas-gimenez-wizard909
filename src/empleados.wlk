object galvan {

	var sueldo = 15000
	var deuda = 0
	var dinero = 0

	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
		
/////////////////Gasta dinero///////////////////
method gastar(cuanto){
	//le alcanza la plata para todo el gasto
	if (dinero>=cuanto){
			dinero -= cuanto
	}else{
		//le alcanza la plata para un parte, la otra va para la deuda
		if (dinero>0){
			deuda+= cuanto - dinero
			dinero = 0
		}
		//no tiene plata, todo va para la deuda
		else{
			deuda += cuanto
		}
	}
///////////////////////Cobra sueldo/////////////////////////////////
method cobrarSueldo(){
	//no tiene plata para pagar toda la deuda, sigue deviendo
	if (deuda >=sueldo){
		dinero += sueldo - sueldo
		deuda -= sueldo
	}
	else{
		//tiene deuda, le sobra sueldo
		//no tiene deuda
		dinero += sueldo -deuda
		deuda -=deuda
		}
	}
	

	if (deuda=0 ){
		deuda += cuanto
	}
}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalDineroCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		
		totalDineroCobrado += self.sueldo()
	}
	
	method totalDineroCobrado(){
		return totalDineroCobrado
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() }
	
}


