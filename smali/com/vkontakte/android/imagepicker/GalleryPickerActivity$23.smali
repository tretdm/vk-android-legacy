.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCaptionBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$applier:Ljava/lang/Runnable;

.field private final synthetic val$dialog:[Landroid/app/AlertDialog;

.field private final synthetic val$rawText:Ljava/lang/String;

.field private final synthetic val$textView:Landroid/widget/EditText;

.field private final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/text/TextWatcher;Ljava/lang/Runnable;[Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$textView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$rawText:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$watcher:Landroid/text/TextWatcher;

    iput-object p5, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$applier:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$dialog:[Landroid/app/AlertDialog;

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 953
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 955
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$textView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$rawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$textView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$textView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 962
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$textView:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$applier:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;->val$dialog:[Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23$1;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;Ljava/lang/Runnable;[Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 977
    const/4 v0, 0x1

    return v0
.end method
