.class Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;
.super Ljava/lang/Object;
.source "DocumentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DocumentsFragment$3;

.field final synthetic val$doc:Lcom/vkontakte/android/api/Document;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment$3;Lcom/vkontakte/android/api/Document;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;->this$1:Lcom/vkontakte/android/fragments/DocumentsFragment$3;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;->val$doc:Lcom/vkontakte/android/api/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    packed-switch p2, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;->this$1:Lcom/vkontakte/android/fragments/DocumentsFragment$3;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;->val$doc:Lcom/vkontakte/android/api/Document;

    iget-object v3, v3, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;->this$1:Lcom/vkontakte/android/fragments/DocumentsFragment$3;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;->val$doc:Lcom/vkontakte/android/api/Document;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$600(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
