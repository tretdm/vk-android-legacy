.class public Lcom/vkontakte/android/SendSinglePhotoActivity;
.super Landroid/app/Activity;
.source "SendSinglePhotoActivity.java"


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private edit:Landroid/widget/EditText;

.field private image:Landroid/widget/ImageView;

.field private sendBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/SendSinglePhotoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/SendSinglePhotoActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->send()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SendSinglePhotoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SendSinglePhotoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/SendSinglePhotoActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SendSinglePhotoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method private loadPhoto(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method private send()V
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->finish()V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "file"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "req_params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 86
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "text"

    iget-object v3, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    const-string v2, "info"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->image:Landroid/widget/ImageView;

    .line 42
    const/high16 v0, 0x7f030000

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$1;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_hint"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->loadPhoto(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$2;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 66
    const v1, 0x7f0d028c

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 67
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 68
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->onBackPressed()V

    .line 78
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
