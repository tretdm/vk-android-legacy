.class Lcom/vkontakte/android/NewPostActivity$8;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    .line 227
    .local v1, "spans":[Landroid/text/style/ImageSpan;
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 228
    invoke-static {p1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 229
    return-void

    .line 227
    :cond_0
    aget-object v0, v1, v2

    .local v0, "sp":Landroid/text/style/ImageSpan;
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 233
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "len"    # I

    .prologue
    const/4 v1, 0x1

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$7(Lcom/vkontakte/android/NewPostActivity;)V

    .line 238
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/NewPostActivity;->access$8(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->access$9(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 240
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
