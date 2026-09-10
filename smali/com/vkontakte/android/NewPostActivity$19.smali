.class Lcom/vkontakte/android/NewPostActivity$19;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$opts:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$opts:[Z

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 749
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$opts:[Z

    aget-boolean v2, v2, v0

    iput-boolean v2, v1, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 750
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$opts:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    iput-boolean v2, v1, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 751
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity;->access$20(Lcom/vkontakte/android/NewPostActivity;)V

    .line 752
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v2, 0x7f0901c6

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v2, v2, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$22(Lcom/vkontakte/android/NewPostActivity;)V

    .line 754
    return-void

    .line 752
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
