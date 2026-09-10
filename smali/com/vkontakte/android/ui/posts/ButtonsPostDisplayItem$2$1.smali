.class Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;
.super Ljava/lang/Object;
.source "ButtonsPostDisplayItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    invoke-static {v0}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->access$000(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/vkontakte/android/data/Posts;->deletePost(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;)V

    .line 71
    return-void
.end method
