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

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    iput-object p2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->val$view:Landroid/view/View;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    invoke-static {v0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->access$0(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;)Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->this$1:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    invoke-static {v1}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;->access$0(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;)Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->access$0(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;ZLandroid/view/View;)V

    .line 192
    return-void
.end method
