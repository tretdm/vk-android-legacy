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
    .line 222
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 225
    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ImageSpan;

    .line 226
    .local v4, "spans":[Landroid/text/style/ImageSpan;
    move-object v0, v4

    .local v0, "arr$":[Landroid/text/style/ImageSpan;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "sp":Landroid/text/style/ImageSpan;
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v3    # "sp":Landroid/text/style/ImageSpan;
    :cond_0
    invoke-static {p1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 228
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 232
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

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$700(Lcom/vkontakte/android/NewPostActivity;)V

    .line 237
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/NewPostActivity;->access$800(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->access$902(Lcom/vkontakte/android/NewPostActivity;Z)Z

    .line 239
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
