.class public Lcom/vkontakte/android/PhotoAlbumListActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "PhotoAlbumListActivity.java"


# instance fields
.field private createAlbumPrivacy:I

.field private view:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumListActivity;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumListActivity;->showCreateAlbumDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoAlbumListActivity;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/vkontakte/android/PhotoAlbumListActivity;->createAlbumPrivacy:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoAlbumListActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity;->createAlbumPrivacy:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoAlbumListActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/PhotoAlbumListActivity;->createAlbum(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoAlbumListActivity;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/PhotoAlbumListActivity;->doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumListActivity;->deleteAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    return-void
.end method

.method private createAlbum(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "descr"    # Ljava/lang/String;
    .param p3, "privacy"    # I

    .prologue
    .line 133
    new-instance v0, Lcom/vkontakte/android/api/PhotosCreateAlbum;

    invoke-direct {v0, p1, p2, p3}, Lcom/vkontakte/android/api/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    new-instance v1, Lcom/vkontakte/android/PhotoAlbumListActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoAlbumListActivity$5;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 147
    return-void
.end method

.method private deleteAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 2
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 195
    new-instance v0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;

    iget v1, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;-><init>(I)V

    .line 196
    new-instance v1, Lcom/vkontakte/android/PhotoAlbumListActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoAlbumListActivity$9;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 209
    return-void
.end method

.method private doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "privacy"    # I

    .prologue
    .line 160
    iput-object p2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 161
    iput-object p3, p1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 162
    iput p4, p1, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    .line 163
    new-instance v0, Lcom/vkontakte/android/api/PhotosEditAlbum;

    iget v1, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/vkontakte/android/api/PhotosEditAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 164
    new-instance v1, Lcom/vkontakte/android/PhotoAlbumListActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoAlbumListActivity$7;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosEditAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 177
    return-void
.end method

.method private showCreateAlbumDialog()V
    .locals 8

    .prologue
    .line 123
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v5, "result":Landroid/os/Bundle;
    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const v6, 0x7f0900c4

    new-instance v7, Lcom/vkontakte/android/PhotoAlbumListActivity$4;

    invoke-direct {v7, p0, v5}, Lcom/vkontakte/android/PhotoAlbumListActivity$4;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Landroid/os/Bundle;)V

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/PhotoAlbumListActivity;->showEditAlbumDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 130
    return-void
.end method


# virtual methods
.method public confirmDeleteAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/PhotoAlbumListActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/PhotoAlbumListActivity$8;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 192
    return-void
.end method

.method public editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 8
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 150
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v5, "result":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    iget v4, p1, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    const v6, 0x7f0900e9

    new-instance v7, Lcom/vkontakte/android/PhotoAlbumListActivity$6;

    invoke-direct {v7, p0, p1, v5}, Lcom/vkontakte/android/PhotoAlbumListActivity$6;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Lcom/vkontakte/android/api/PhotoAlbum;Landroid/os/Bundle;)V

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/PhotoAlbumListActivity;->showEditAlbumDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 29
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v2, Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/PhotoAlbumsView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 34
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumListActivity;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumListActivity;->view:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->onActivate()V

    .line 37
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    .line 38
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "btnPost":Landroid/widget/ImageView;
    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 42
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v2, Lcom/vkontakte/android/PhotoAlbumListActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoAlbumListActivity$1;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PhotoAlbumListActivity;->addViewAtRight(Landroid/view/View;)V

    .line 52
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "btnPost":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public showEditAlbumDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_title"    # Ljava/lang/String;
    .param p3, "_descr"    # Ljava/lang/String;
    .param p4, "privacy"    # I
    .param p5, "response"    # Landroid/os/Bundle;
    .param p6, "titleResource"    # I
    .param p7, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 55
    move/from16 v0, p4

    iput v0, p0, Lcom/vkontakte/android/PhotoAlbumListActivity;->createAlbumPrivacy:I

    .line 57
    new-instance v11, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v11, "sv":Landroid/widget/ScrollView;
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v7, "ll":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    const/high16 v1, 0x40e00000    # 7.0f

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v1, v2

    float-to-int v9, v1

    .line 62
    .local v9, "padding":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v9, v1, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 65
    .local v4, "title":Landroid/widget/EditText;
    const v1, 0x7f0900c5

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 66
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .local v8, "ll2":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v12, "tt":Landroid/widget/TextView;
    const v1, 0x7f0900c7

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance v10, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 76
    .local v10, "privacyBtn":Landroid/widget/Button;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p4

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 84
    .local v5, "descr":Landroid/widget/EditText;
    const v1, 0x7f0900c6

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 85
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v11, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 90
    new-instance v1, Lcom/vkontakte/android/PhotoAlbumListActivity$2;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v0, v10}, Lcom/vkontakte/android/PhotoAlbumListActivity$2;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Landroid/content/Context;Landroid/widget/Button;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 109
    const v14, 0x7f09009e

    new-instance v1, Lcom/vkontakte/android/PhotoAlbumListActivity$3;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/PhotoAlbumListActivity$3;-><init>(Lcom/vkontakte/android/PhotoAlbumListActivity;Landroid/os/Bundle;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v13, v14, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 118
    const v2, 0x7f09001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 106
    return-object v1
.end method
