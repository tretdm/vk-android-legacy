.class Lcom/vkontakte/android/fragments/ChatFragment$29$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$29;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$29;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    .line 1699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1701
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1702
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1703
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    return-void
.end method
