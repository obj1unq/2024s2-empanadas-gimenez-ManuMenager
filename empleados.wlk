object gimenez {
    var fondo = 300000

    method pagarSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.cobrar()
    }

    method fondo() {
        return fondo
    }
}

object galvan {
    var sueldo = 15000
    var saldo = 0

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method sueldo() = sueldo

    method gastar(cuanto) {
        saldo -= cuanto
    }

    method cobrar() {
        saldo += sueldo
    }

    method dinero() {
        return 0.max(saldo)
        //if (saldo >= 0) saldo else 0 
    }

    method deuda() {
        return 0.min(saldo).abs()
        //if (saldo < 0) -saldo else 0 
    }

}

object baigorria {
    var empanadasVendidas = 0
    var totalCobrado = 0 
    var precioEmpanada = 15

    method sueldo() {
        return precioEmpanada * empanadasVendidas
    }

    method vender(cantidad){
        empanadasVendidas += cantidad
    }

    method cobrar() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }

    method totalCobrado() = totalCobrado

}
