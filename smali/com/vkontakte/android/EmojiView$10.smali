.class Lcom/vkontakte/android/EmojiView$10;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->setTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;

.field final synthetic val$bg:Ljava/lang/String;

.field final synthetic val$tab:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$10;->this$0:Lcom/vkontakte/android/EmojiView;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$10;->val$bg:Ljava/lang/String;

    iput p3, p0, Lcom/vkontakte/android/EmojiView$10;->val$tab:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 557
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$10;->val$bg:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 558
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$10;->this$0:Lcom/vkontakte/android/EmojiView;

    new-instance v2, Lcom/vkontakte/android/EmojiView$10$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/EmojiView$10$1;-><init>(Lcom/vkontakte/android/EmojiView$10;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/EmojiView;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void
.end method
