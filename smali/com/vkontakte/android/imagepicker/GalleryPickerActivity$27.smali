.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$27;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateCurrentRect(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$27;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$27;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$27;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$4(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 1330
    :cond_0
    return-void
.end method
