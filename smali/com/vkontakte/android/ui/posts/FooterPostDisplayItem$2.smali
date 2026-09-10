.class Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$2;
.super Ljava/lang/Object;
.source "FooterPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;-><init>(Lcom/vkontakte/android/NewsEntry;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;

    iget-object v0, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/vkontakte/android/data/Posts;->like(Lcom/vkontakte/android/NewsEntry;ZLandroid/app/Activity;)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method
