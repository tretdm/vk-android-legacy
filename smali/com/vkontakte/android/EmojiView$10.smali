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

.field private final synthetic val$bg:Ljava/lang/String;

.field private final synthetic val$tab:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$10;->this$0:Lcom/vkontakte/android/EmojiView;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$10;->val$bg:Ljava/lang/String;

    iput p3, p0, Lcom/vkontakte/android/EmojiView$10;->val$tab:I

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiView$10;)Lcom/vkontakte/android/EmojiView;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$10;->this$0:Lcom/vkontakte/android/EmojiView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 558
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$10;->val$bg:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$10;->this$0:Lcom/vkontakte/android/EmojiView;

    new-instance v2, Lcom/vkontakte/android/EmojiView$10$1;

    iget v3, p0, Lcom/vkontakte/android/EmojiView$10;->val$tab:I

    invoke-direct {v2, p0, v3, v0}, Lcom/vkontakte/android/EmojiView$10$1;-><init>(Lcom/vkontakte/android/EmojiView$10;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/EmojiView;->post(Ljava/lang/Runnable;)Z

    .line 565
    return-void
.end method
