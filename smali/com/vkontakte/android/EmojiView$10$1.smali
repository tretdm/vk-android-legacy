.class Lcom/vkontakte/android/EmojiView$10$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/EmojiView$10;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$10;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$10$1;->this$1:Lcom/vkontakte/android/EmojiView$10;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$10$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$10$1;->this$1:Lcom/vkontakte/android/EmojiView$10;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$10;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$1500(Lcom/vkontakte/android/EmojiView;)I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$10$1;->this$1:Lcom/vkontakte/android/EmojiView$10;

    iget v1, v1, Lcom/vkontakte/android/EmojiView$10;->val$tab:I

    if-eq v0, v1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$10$1;->this$1:Lcom/vkontakte/android/EmojiView$10;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$10;->this$0:Lcom/vkontakte/android/EmojiView;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$10$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$1600(Lcom/vkontakte/android/EmojiView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
