.class Lcom/vkontakte/android/fragments/PostViewFragment$9$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$9;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$9;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$9;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 545
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$9;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$9;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$9;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 546
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$9;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$9;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$9;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$9;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$9;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$9;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f08010b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 548
    return-void
.end method
