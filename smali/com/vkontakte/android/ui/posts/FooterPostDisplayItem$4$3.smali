.class Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;
.super Ljava/lang/Object;
.source "FooterPostDisplayItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$3;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 227
    return-void
.end method
