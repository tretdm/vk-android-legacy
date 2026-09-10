.class Lcom/vkontakte/android/EmojiView$5;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$5;->this$0:Lcom/vkontakte/android/EmojiView;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$5;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$6(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$5;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$6(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/EmojiView$Listener;->onBackspace()V

    .line 318
    :cond_0
    return-void
.end method
