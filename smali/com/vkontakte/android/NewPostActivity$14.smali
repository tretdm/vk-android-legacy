.class Lcom/vkontakte/android/NewPostActivity$14;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$14;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$14;->val$opts:[Z

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$14;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$14;->val$opts:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    .line 531
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$14;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$14;->val$opts:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    .line 532
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$14;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$11(Lcom/vkontakte/android/NewPostActivity;)V

    .line 533
    return-void
.end method
