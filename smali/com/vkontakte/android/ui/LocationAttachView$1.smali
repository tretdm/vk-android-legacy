.class Lcom/vkontakte/android/ui/LocationAttachView$1;
.super Ljava/lang/Object;
.source "LocationAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/LocationAttachView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/LocationAttachView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$url:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/LocationAttachView$1;)Lcom/vkontakte/android/ui/LocationAttachView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    new-instance v2, Lcom/vkontakte/android/ui/LocationAttachView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/ui/LocationAttachView$1$1;-><init>(Lcom/vkontakte/android/ui/LocationAttachView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
