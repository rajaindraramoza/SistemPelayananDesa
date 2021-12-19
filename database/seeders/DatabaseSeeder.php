<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::factory(3)->create();

        User::create([
            'name' => 'Admin',
            'nik' => '123',
            'username' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('admin'),
            'is_admin' => 1
        ]);
        User::create([
            'name' => 'Userpertama',
            'nik' => '1234',
            'username' => 'userpertama',
            'email' => 'user@gmail.com',
            'password' => bcrypt('user'),
            'is_admin' => 0
        ]);
        User::create([
            'name' => 'Raja Indra Ramoza',
            'nik' => '12345',
            'username' => 'rajaindraramoza',
            'email' => 'rajaindra97@gmail.com',
            'password' => bcrypt('admin'),
            'is_admin' => 1
        ]);

        Category::create([
            'name' => 'Berita Desa',
            'slug' => 'berita-desa'
        ]);

        Category::create([
            'name' => 'personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Soluta corrupti repellat nihil id unde commodi animi, ratione delectus sed a laboriosam. Iste perspiciatis quam odio rerum distinctio obcaecati eos laudantium corporis eveniet ducimus cupiditate a recusandae fuga magnam, quidem laborum fugit.',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Soluta corrupti repellat nihil id unde commodi animi, ratione delectus sed a laboriosam. Iste perspiciatis quam odio rerum distinctio obcaecati eos laudantium corporis eveniet ducimus cupiditate a recusandae fuga magnam, quidem laborum fugit. Dolorem quasi consectetur iste harum, ducimus rem dolore, magnam similique accusamus beatae nobis fugit aliquid sint exercitationem quo cum. Aut, recusandae consequuntur molestias quae, vel optio consequatur harum numquam sed sapiente error. Quasi incidunt omnis, tempora blanditiis, voluptatum porro sint eligendi vitae ad expedita consequuntur animi soluta eius ullam totam, repellendus eos! Ea velit consectetur assumenda mollitia odit. Illo quibusdam accusamus ullam nobis! Quae pariatur perspiciatis animi, aspernatur incidunt ratione neque velit nulla tenetur nemo ab id, qui facere harum. A nesciunt quia deserunt veritatis ipsam quo necessitatibus ratione qui sequi itaque ipsa, porro cum cupiditate cumque ab non, facere error officiis minus repellendus! A culpa quae magnam voluptatem. Impedit, consectetur! Officiis natus impedit debitis illo laboriosam error ipsam tempora laudantium necessitatibus. Delectus quisquam porro dicta repudiandae, natus doloremque ab animi veritatis placeat aperiam consequuntur magnam, asperiores quod molestias nesciunt odit qui. Ab debitis possimus inventore officiis facere sint animi error adipisci id, quasi qui quo! Obcaecati quia ex labore quaerat quibusdam dolor nesciunt esse, voluptates deleniti eum impedit soluta commodi sit distinctio amet placeat ab iusto nisi expedita, velit delectus incidunt ducimus. Eos, natus facere. Id aperiam, totam minus quaerat itaque voluptatum voluptates nostrum quam eius eaque dolore aut fugiat tenetur, accusamus accusantium quae debitis quisquam deserunt. Architecto distinctio iure eum minus! Quo cum molestiae nulla exercitationem est perspiciatis numquam, ea in animi consequuntur, amet nostrum velit? Laudantium officiis porro alias iste nemo ea odit beatae, rem fugiat dolores nesciunt exercitationem amet, temporibus, hic culpa corrupti commodi sunt tempora deleniti recusandae? Quam sapiente quibusdam alias aliquam corporis rem. Neque dolorum nihil, perspiciatis explicabo at architecto consequuntur optio unde iusto laboriosam voluptatum tenetur dignissimos ratione distinctio ab odit! Alias unde, facilis enim eius tempore nesciunt dicta aut ea doloribus delectus dolorem at facere placeat rem ut magni ad eaque est quod natus blanditiis, possimus harum iure consequatur. Facilis perferendis laudantium dolorem itaque, soluta, dignissimos ad consectetur debitis atque officiis culpa! At, officiis quo. Aspernatur beatae dolore eum dolorum dolores praesentium! Suscipit culpa quibusdam nisi ipsam neque nesciunt optio vel quaerat omnis fugiat. Libero ullam neque provident nam velit unde quia architecto nulla excepturi deserunt ex est, consequatur consequuntur perspiciatis.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

    }
}
