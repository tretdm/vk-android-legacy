.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$9(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 368
    return-void
.end method
