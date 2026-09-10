.class Lcom/vkontakte/android/DocumentChooserActivity$2;
.super Ljava/lang/Object;
.source "DocumentChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DocumentChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DocumentChooserActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DocumentChooserActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 33
    packed-switch p2, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 36
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    const-class v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "selection_limit"

    iget-object v3, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/DocumentChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "limit"

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string v2, "prevent_styling"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    iget-object v2, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/DocumentChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 44
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    const-class v3, Lcom/vkontakte/android/FilePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "size_limit"

    const-wide/32 v3, 0xc800000

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    const/16 v3, 0x67

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/DocumentChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 51
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "DocumentsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/vkontakte/android/DocumentChooserActivity$2;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    const/16 v3, 0x66

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/DocumentChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
