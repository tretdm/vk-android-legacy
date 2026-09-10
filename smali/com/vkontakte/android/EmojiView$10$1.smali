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

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$tab:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$10;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$10$1;->this$1:Lcom/vkontakte/android/EmojiView$10;

    iput p2, p0, Lcom/vkontakte/android/EmojiView$10$1;->val$tab:I

    iput-object p3, p0, Lcom/vkontakte/android/EmojiView$10$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$10$1;->this$1:Lcom/vkontakte/android/EmojiView$10;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$10;->access$0(Lcom/vkontakte/android/EmojiView$10;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$17(Lcom/vkontakte/android/EmojiView;)I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/EmojiView$10$1;->val$tab:I

    if-eq v0, v1, :cond_0

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$10$1;->this$1:Lcom/vkontakte/android/EmojiView$10;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$10;->access$0(Lcom/vkontakte/android/EmojiView$10;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$10$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$23(Lcom/vkontakte/android/EmojiView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
