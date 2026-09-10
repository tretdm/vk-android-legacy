.class Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;
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
    .line 200
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v1, v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v1, v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iget-object v2, v2, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->access$200(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;ZLandroid/view/View;)V

    .line 203
    return-void
.end method
