.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCaptionBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field final synthetic val$applier:Ljava/lang/Runnable;

.field final synthetic val$dialog:[Landroid/app/AlertDialog;

.field final synthetic val$rawText:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/EditText;

.field final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/text/TextWatcher;Ljava/lang/Runnable;[Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$textView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$rawText:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$watcher:Landroid/text/TextWatcher;

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$applier:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$dialog:[Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1096
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$textView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$rawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$textView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$textView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1103
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;->val$textView:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1118
    const/4 v0, 0x1

    return v0
.end method
