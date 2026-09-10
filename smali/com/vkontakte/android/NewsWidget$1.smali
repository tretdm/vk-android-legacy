.class Lcom/vkontakte/android/NewsWidget$1;
.super Ljava/lang/Object;
.source "NewsWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsWidget;->loadPhoto(Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsWidget;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$rv:Landroid/widget/RemoteViews;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsWidget;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsWidget$1;->this$0:Lcom/vkontakte/android/NewsWidget;

    iput-object p2, p0, Lcom/vkontakte/android/NewsWidget$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/NewsWidget$1;->val$rv:Landroid/widget/RemoteViews;

    iput-object p4, p0, Lcom/vkontakte/android/NewsWidget$1;->val$context:Landroid/content/Context;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$1;->val$rv:Landroid/widget/RemoteViews;

    const v2, 0x7f060180

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$1;->this$0:Lcom/vkontakte/android/NewsWidget;

    iget-object v2, p0, Lcom/vkontakte/android/NewsWidget$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsWidget;->access$0(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V

    .line 280
    return-void
.end method
