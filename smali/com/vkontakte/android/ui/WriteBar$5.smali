.class Lcom/vkontakte/android/ui/WriteBar$5;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/WriteBar;

.field private final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/WriteBar;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    iput-object p2, p0, Lcom/vkontakte/android/ui/WriteBar$5;->val$dlg:Landroid/app/Dialog;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v4, 0x1

    .line 221
    packed-switch p3, :pswitch_data_0

    .line 270
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 271
    return-void

    .line 224
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "limit"

    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkontakte/android/ui/WriteBar;->access$7(Lcom/vkontakte/android/ui/WriteBar;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkontakte/android/ui/WriteBar;->access$0(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v3}, Lcom/vkontakte/android/ui/WriteBar;->access$8(Lcom/vkontakte/android/ui/WriteBar;)Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v3

    const/16 v4, 0x2711

    invoke-virtual {v3, v1, v4}, Lcom/actionbarsherlock/app/SherlockFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 233
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "select"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "class"

    const-string v4, "AudioListFragment"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v3, "args"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v3}, Lcom/vkontakte/android/ui/WriteBar;->access$8(Lcom/vkontakte/android/ui/WriteBar;)Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v3

    const/16 v4, 0x2713

    invoke-virtual {v3, v1, v4}, Lcom/actionbarsherlock/app/SherlockFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 243
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v3, "select"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "class"

    const-string v4, "VideoListFragment"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v3, "args"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 248
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v3}, Lcom/vkontakte/android/ui/WriteBar;->access$8(Lcom/vkontakte/android/ui/WriteBar;)Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v3

    const/16 v4, 0x2712

    invoke-virtual {v3, v1, v4}, Lcom/actionbarsherlock/app/SherlockFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 253
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v3, "select"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "class"

    const-string v4, "DocumentsFragment"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v3, "args"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 258
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v3}, Lcom/vkontakte/android/ui/WriteBar;->access$8(Lcom/vkontakte/android/ui/WriteBar;)Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v3

    const/16 v4, 0x2714

    invoke-virtual {v3, v1, v4}, Lcom/actionbarsherlock/app/SherlockFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 263
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v3}, Lcom/vkontakte/android/ui/WriteBar;->access$8(Lcom/vkontakte/android/ui/WriteBar;)Lcom/actionbarsherlock/app/SherlockFragment;

    move-result-object v3

    const/16 v4, 0x2715

    invoke-virtual {v3, v1, v4}, Lcom/actionbarsherlock/app/SherlockFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 266
    .local v2, "x":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar$5;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06004e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
