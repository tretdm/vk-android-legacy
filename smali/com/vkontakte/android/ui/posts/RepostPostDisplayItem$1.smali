.class Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;
.super Ljava/lang/Object;
.source "RepostPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    const-string v1, "wall"

    .line 27
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    iget v2, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 28
    const-string v1, "photo"

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    iget v2, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 30
    const-string v1, "video"

    .line 31
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vkontakte://vk.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    iget v4, v4, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;

    iget v4, v4, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->origID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method
