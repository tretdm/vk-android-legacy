.class Lcom/vkontakte/android/ProfileView$21;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->addFriend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;

.field private final synthetic val$alertView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$21;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileView$21;->val$alertView:Landroid/view/View;

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$21;->val$alertView:Landroid/view/View;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$21;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ProfileView;->access$6(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V

    .line 1400
    return-void
.end method
