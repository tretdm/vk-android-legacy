.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$6;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initialize(Z)V
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$6;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$6;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$10(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 382
    return-void
.end method
