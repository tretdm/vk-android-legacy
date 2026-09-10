.class Lcom/vkontakte/android/PollEditorActivity$2;
.super Ljava/lang/Object;
.source "PollEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PollEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PollEditorActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity$2;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity$2;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PollEditorActivity;->access$200(Lcom/vkontakte/android/PollEditorActivity;)V

    .line 48
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 56
    return-void
.end method
