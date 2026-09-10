.class Lcom/vkontakte/android/MessageViewActivity$9$1;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MessageViewActivity$9;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity$9;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$9$1;->this$1:Lcom/vkontakte/android/MessageViewActivity$9;

    iput-object p2, p0, Lcom/vkontakte/android/MessageViewActivity$9$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$9$1;->this$1:Lcom/vkontakte/android/MessageViewActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/MessageViewActivity$9;->access$0(Lcom/vkontakte/android/MessageViewActivity$9;)Lcom/vkontakte/android/MessageViewActivity;

    move-result-object v0

    const v1, 0x7f0600d9

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$9$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 468
    return-void
.end method
