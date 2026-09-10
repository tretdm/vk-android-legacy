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

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;

    iput-object p2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->val$context:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;

    invoke-static {v0}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->access$0(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;)Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;

    invoke-static {v1}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;->access$0(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;)Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->access$0(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->access$1(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 71
    return-void
.end method
