.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1108
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$applier:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1111
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$dialog:[Landroid/app/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1114
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
