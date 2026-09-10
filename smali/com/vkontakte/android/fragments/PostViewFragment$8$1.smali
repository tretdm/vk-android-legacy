.class Lcom/vkontakte/android/fragments/PostViewFragment$8$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$8;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$8;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$8;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 415
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$8;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$8;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 417
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$8;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$8;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0323

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 418
    return-void
.end method
