.class Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;->this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;->this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$600(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;->this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$600(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;->this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    iget-object v2, v0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/EmojiView;->access$2300(Lcom/vkontakte/android/EmojiView;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/vkontakte/android/EmojiView$Listener;->onEmojiSelected(Ljava/lang/String;)V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;->this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    iget-object v1, v0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/EmojiView;->access$2400(Lcom/vkontakte/android/EmojiView;J)V

    .line 910
    return-void
.end method
