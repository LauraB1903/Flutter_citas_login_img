import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menú Hospital',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Menú Hospital'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => _navigateToPage(context, index),
            child: Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _getIcon(index),
                    Text(
                      _getMenuItemText(index),
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

    void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CitasMedicasPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UrgenciasPage()),
        );
        break;
      
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EspecialistasPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FarmaciaPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PacientesPage()),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TerapiasPage()),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LaboratorioPage()),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SangrePage()),
        );
        break;
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RehabilitacionPage()),
        );
        break;
      case 9:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ConsultasPage()),
        );
        break;
      case 10:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InformesPage()),
        );
        break;
      case 11:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CalendarioPage()),
        );
        break;
      case 12:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PagosPage()),
        );
        break;
      case 13:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactosPage()),
        );
        break;
      case 14:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InformacionPage()),
        );
        break;
      default:
        print('Opción no implementada: $index');
    }
  }
}

class CitasMedicasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Citas Médicas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Medicina General'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Odontología'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Psicología'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Cardiología'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Neurología'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Ginecología'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Dermatología'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Pediatría'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Oftamología'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information, color: Colors.grey),
            title: Text('Ortopedia'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
class UrgenciasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Urgencias'),
      ),
      body: Center(
        child: Text('Página de Urgencias'), 
      ),
    );
  }
}

class EspecialistasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Especialistas'),
      ),
      body: Center(
        child: Text('Página de Especialistas'), 
      ),
    );
  }
}

class FarmaciaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Farmacia'),
      ),
      body: Center(
        child: Text('Página de Farmacia'), 
      ),
    );
  }
}

class PacientesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Pacientes'),
      ),
      body: Center(
        child: Text('Página de Pacientes'), 
      ),
    );
  }
}

class TerapiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Terapias'),
      ),
      body: Center(
        child: Text('Página de Terapias'), 
      ),
    );
  }
}

class LaboratorioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Laboratorio'),
      ),
      body: Center(
        child: Text('Página de Laboratorio'), 
      ),
    );
  }
}

class SangrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Sangre'),
      ),
      body: Center(
        child: Text('Tipo de Sangre'), 
      ),
    );
  }
}

class RehabilitacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Rehabilitación'),
      ),
      body: Center(
        child: Text('Página de Rehabilitación'), 
      ),
    );
  }
}

class ConsultasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Consultas'),
      ),
      body: Center(
        child: Text('Página de Consultas'), 
      ),
    );
  }
}

class InformesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Informes'),
      ),
      body: Center(
        child: Text('Página de informes'), 
      ),
    );
  }
}

class CalendarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Calendario'),
      ),
      body: Center(
        child: Text('Página de Calendario'), 
      ),
    );
  }
}

class PagosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Pagos'),
      ),
      body: Center(
        child: Text('Medios de pago'), 
      ),
    );
  }
}

class ContactosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Contactos'),
      ),
      body: Center(
        child: Text('Números de Contacto'), 
      ),
    );
  }
}

class InformacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Información'),
      ),
      body: Center(
        child: Text('Página de Información'),
      ),
    );
  }
}




  Icon _getIcon(int index) {
    switch (index) {
      case 0:
        return Icon(Icons.calendar_today,color: Colors.purple[200]); // Citas Médicas
      case 1:
        return Icon(Icons.local_hospital,color: Colors.purple[200]); // Urgencias
      case 2:
        return Icon(Icons.medical_services,color: Colors.purple[200]); // Especialistas
      case 3:
        return Icon(Icons.local_pharmacy,color: Colors.purple[200]); // Farmacia
      case 4:
        return Icon(Icons.person,color: Colors.purple[200]); // Pacientes
      case 5:
        return Icon(Icons.healing,color: Colors.purple[200]); // Terapias
      case 6:
        return Icon(Icons.science,color: Colors.purple[200]); // Laboratorio
      case 7:
        return Icon(Icons.bloodtype,color: Colors.purple[200]); // Sangre
      case 8:
        return Icon(Icons.emoji_people_outlined,color: Colors.purple[200]); // Rehabilitación
      case 9:
        return Icon(Icons.list_alt,color: Colors.purple[200]); // Consultas
      case 10:
        return Icon(Icons.folder,color: Colors.purple[200]); // Informes
      case 11:
        return Icon(Icons.calendar_view_month,color: Colors.purple[200]); // Calendario
      case 12:
        return Icon(Icons.monetization_on,color: Colors.purple[200]); // Pagos
      case 13:
        return Icon(Icons.contacts,color: Colors.purple[200]); // Contactos
      case 14:
        return Icon(Icons.info,color: Colors.purple[200]); // Información
      default:
        return Icon(Icons.help,color: Colors.purple[200]);
    }
  }


String _getMenuItemText(int index) {
  switch (index) {
    case 0:
      return 'Citas Médicas';
    case 1:
      return 'Urgencias';
    case 2:
      return 'Especialistas';
    case 3:
      return 'Farmacia';
    case 4:
      return 'Pacientes';
    case 5:
      return 'Terapias';
    case 6:
      return 'Laboratorio';
    case 7:
      return 'Sangre';
    case 8:
      return 'Rehablitación';
    case 9:
      return 'Consultas';
    case 10:
      return 'Informes';
    case 11:
      return 'Calendario';
    case 12:
      return 'Pagos';
    case 13:
      return 'Contactos';
    case 14:
      return 'Información';
    // ...
    default:
      return 'Ítem ${index + 1}';
  }
}
