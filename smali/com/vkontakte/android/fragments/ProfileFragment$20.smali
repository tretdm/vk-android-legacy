.class Lcom/vkontakte/android/fragments/ProfileFragment$20;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;->addFriend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

.field final synthetic val$alertView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$20;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$20;->val$alertView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$20;->val$alertView:Landroid/view/View;

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$20;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$600(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V

    .line 1414
    return-void
.end method
