.class Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$8;
.super Ljava/lang/Object;
.source "ImagesViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->hideCropper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$8;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$8;->this$0:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->access$4(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/ui/CropperView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setVisibility(I)V

    .line 484
    return-void
.end method
