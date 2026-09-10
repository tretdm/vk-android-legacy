.class Lcom/vkontakte/android/ui/AttachmentsEditorView$8;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private final synthetic val$la:Lcom/vkontakte/android/PollAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PollAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;->val$la:Lcom/vkontakte/android/PollAttachment;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/PollEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "poll"

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;->val$la:Lcom/vkontakte/android/PollAttachment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 428
    return-void
.end method
