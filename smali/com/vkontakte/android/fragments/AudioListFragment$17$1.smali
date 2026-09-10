.class Lcom/vkontakte/android/fragments/AudioListFragment$17$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment$17;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/AudioListFragment$17;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment$17;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$17$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$17;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$17$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/AudioListFragment$17$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$17$1;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$17$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 691
    return-void
.end method
