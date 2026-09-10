.class public Lcom/vkontakte/android/DocumentChooserActivity;
.super Landroid/app/Activity;
.source "DocumentChooserActivity.java"


# static fields
.field private static final FILE_RESULT:I = 0x67

.field private static final LIST_RESULT:I = 0x66

.field private static final PHOTO_RESULT:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 72
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    .line 73
    const/16 v1, 0x66

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 74
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v8, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v1, "document"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/api/Document;

    .line 76
    .local v9, "doc":Lcom/vkontakte/android/api/Document;
    new-instance v1, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v1, v9}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v13, "result":Landroid/content/Intent;
    const-string v1, "documents"

    invoke-virtual {v13, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v13}, Lcom/vkontakte/android/DocumentChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentChooserActivity;->finish()V

    .line 82
    .end local v8    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v9    # "doc":Lcom/vkontakte/android/api/Document;
    .end local v13    # "result":Landroid/content/Intent;
    :cond_0
    const/16 v1, 0x65

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 83
    const-string v1, "images"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 84
    .local v11, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v8    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "file":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 87
    .local v14, "uri":Landroid/net/Uri;
    const-string v1, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v4, v1

    .line 90
    .local v4, "size":I
    new-instance v1, Lcom/vkontakte/android/PendingDocumentAttachment;

    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v7

    move-object v5, v3

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/PendingDocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "size":I
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 93
    .restart local v13    # "result":Landroid/content/Intent;
    const-string v1, "documents"

    invoke-virtual {v13, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v13}, Lcom/vkontakte/android/DocumentChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentChooserActivity;->finish()V

    .line 97
    .end local v8    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "result":Landroid/content/Intent;
    :cond_4
    const/16 v1, 0x67

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 98
    const-string v1, "files"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 99
    .local v12, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 100
    .restart local v13    # "result":Landroid/content/Intent;
    const-string v1, "documents"

    invoke-virtual {v13, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v13}, Lcom/vkontakte/android/DocumentChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentChooserActivity;->finish()V

    .line 107
    .end local v12    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v13    # "result":Landroid/content/Intent;
    :cond_5
    :goto_1
    return-void

    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentChooserActivity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0d0006

    const v6, 0x7f0d0004

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DocumentChooserActivity;->setContentView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "no_my"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/DocumentChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/DocumentChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 28
    .local v0, "items":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/DocumentChooserActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/DocumentChooserActivity$2;-><init>(Lcom/vkontakte/android/DocumentChooserActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/DocumentChooserActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/DocumentChooserActivity$1;-><init>(Lcom/vkontakte/android/DocumentChooserActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 69
    return-void

    .line 26
    .end local v0    # "items":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/DocumentChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/DocumentChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0d0005

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DocumentChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0
.end method
