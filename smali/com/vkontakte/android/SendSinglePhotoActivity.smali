.class public Lcom/vkontakte/android/SendSinglePhotoActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
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
    .line 28
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SendSinglePhotoActivity;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->send()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private loadPhoto(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method private send()V
    .locals 5

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->finish()V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "file"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "req_params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 88
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "text"

    iget-object v3, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    const-string v2, "info"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    .line 42
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->image:Landroid/widget/ImageView;

    .line 44
    const/high16 v0, 0x7f030000

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$1;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_hint"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->loadPhoto(Landroid/net/Uri;)V

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$2;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 68
    const v1, 0x7f060012

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 69
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 70
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 75
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->onBackPressed()V

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
