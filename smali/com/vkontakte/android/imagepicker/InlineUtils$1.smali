.class Lcom/vkontakte/android/imagepicker/InlineUtils$1;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/InlineUtils;->applyFilter(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->showFiltersToast()V

    .line 42
    return-void
.end method
