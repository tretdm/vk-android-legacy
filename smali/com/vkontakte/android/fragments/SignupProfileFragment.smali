.class public Lcom/vkontakte/android/fragments/SignupProfileFragment;
.super Landroid/app/Fragment;
.source "SignupProfileFragment.java"


# static fields
.field private static final AVA_RESULT:I = 0x65


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private gender:I

.field private photo:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->gender:I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupProfileFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/SignupProfileFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->gender:I

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupProfileFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/SignupProfileFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupProfileFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/SignupProfileFragment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupProfileFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 158
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 159
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 160
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 144
    :cond_0
    return-void
.end method

.method private updatePhoto()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    return-void
.end method


# virtual methods
.method public getFirstName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->gender:I

    return v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public isFilled()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v3, 0x7f080186

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v3, 0x7f080187

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    move v0, v2

    .line 279
    .local v0, "res":I
    :goto_0
    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getGender()I

    move-result v1

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02ed

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 285
    const/4 v0, -0x1

    .line 287
    .end local v0    # "res":I
    :cond_0
    return v0

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f080185

    const/16 v2, 0x65

    .line 165
    if-ne p1, v2, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->updatePhoto()V

    .line 170
    :cond_0
    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 171
    iput-object v4, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f080145

    const v2, 0x7f080143

    const/4 v4, 0x1

    .line 55
    const v0, 0x7f03007a

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v3, 0x7f080182

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v3, 0x7f080188

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/vkontakte/android/fragments/SignupProfileFragment$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$1;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/vkontakte/android/fragments/SignupProfileFragment$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$2;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v3, 0x7f080183

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/vkontakte/android/fragments/SignupProfileFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$3;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v3, 0x7f080187

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/fragments/SignupProfileFragment$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$4;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    iget v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->gender:I

    if-lez v0, :cond_0

    .line 107
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    iget v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->gender:I

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/SignupProfileFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$5;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/fragments/SignupProfileFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$6;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f080185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->updatePhoto()V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    return-object v0

    :cond_2
    move v0, v2

    .line 107
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "vk"

    const-string v1, "Clear focus"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 151
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    .line 153
    return-void
.end method

.method public setOnNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 52
    return-void
.end method
