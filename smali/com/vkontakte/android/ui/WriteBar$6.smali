.class Lcom/vkontakte/android/ui/WriteBar$6;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/WriteBar;

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/WriteBar;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iput-object p2, p0, Lcom/vkontakte/android/ui/WriteBar$6;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 248
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkontakte/android/ui/WriteBar;->access$000(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkontakte/android/ui/WriteBar;->access$500(Lcom/vkontakte/android/ui/WriteBar;)I

    move-result v5

    if-lt v4, v5, :cond_0

    const/4 v4, 0x4

    if-eq p3, v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0035

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v8}, Lcom/vkontakte/android/ui/WriteBar;->access$500(Lcom/vkontakte/android/ui/WriteBar;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 334
    :goto_0
    return-void

    .line 252
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 333
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 255
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "limit"

    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkontakte/android/ui/WriteBar;->access$500(Lcom/vkontakte/android/ui/WriteBar;)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v6}, Lcom/vkontakte/android/ui/WriteBar;->access$000(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkontakte/android/ui/WriteBar;->access$600(Lcom/vkontakte/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v4

    const/16 v5, 0x2711

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 262
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "select"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "AudioListFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 267
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkontakte/android/ui/WriteBar;->access$600(Lcom/vkontakte/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v4

    const/16 v5, 0x2713

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 272
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iget-boolean v4, v4, Lcom/vkontakte/android/ui/WriteBar;->isChat:Z

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    .line 273
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0176

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    new-instance v6, Lcom/vkontakte/android/ui/WriteBar$6$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/ui/WriteBar$6$1;-><init>(Lcom/vkontakte/android/ui/WriteBar$6;)V

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0356

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 297
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkontakte/android/ui/WriteBar;->access$700(Lcom/vkontakte/android/ui/WriteBar;)V

    goto/16 :goto_1

    .line 303
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "limit"

    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkontakte/android/ui/WriteBar;->access$500(Lcom/vkontakte/android/ui/WriteBar;)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v6}, Lcom/vkontakte/android/ui/WriteBar;->access$000(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkontakte/android/ui/WriteBar;->access$600(Lcom/vkontakte/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v4

    const/16 v5, 0x2714

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 310
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_providers_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "locationProviders":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 312
    :cond_2
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0158

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0157

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d01d8

    new-instance v6, Lcom/vkontakte/android/ui/WriteBar$6$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/ui/WriteBar$6$2;-><init>(Lcom/vkontakte/android/ui/WriteBar$6;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0052

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 328
    .end local v2    # "locationProviders":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 329
    .local v3, "x":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d00d0

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 326
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v2    # "locationProviders":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkontakte/android/ui/WriteBar;->access$600(Lcom/vkontakte/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v4

    const/16 v5, 0x2715

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
