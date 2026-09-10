.class Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$2;
.super Ljava/lang/Object;
.source "FooterPostDisplayItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->success(III)V
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
    .line 206
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$2;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$2;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$2;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$2;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 209
    return-void
.end method
