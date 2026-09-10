.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$7;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadgeAnimated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$7;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$7;->val$count:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$500(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V

    .line 788
    return-void
.end method
