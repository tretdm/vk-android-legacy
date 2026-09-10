.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;

.field private final synthetic val$applier:Ljava/lang/Runnable;

.field private final synthetic val$dialog:[Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;Ljava/lang/Runnable;[Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;->val$applier:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;->val$dialog:[Landroid/app/AlertDialog;

    .line 962
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
    .line 967
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;->val$applier:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 970
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;->val$dialog:[Landroid/app/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 973
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
