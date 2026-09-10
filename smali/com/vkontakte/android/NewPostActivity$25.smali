.class Lcom/vkontakte/android/NewPostActivity$25;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->addAttachment(Ljava/util/Vector;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$atts:Ljava/util/Vector;

.field private final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Vector;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$25;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$25;->val$atts:Ljava/util/Vector;

    iput p3, p0, Lcom/vkontakte/android/NewPostActivity$25;->val$idx:I

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$25;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$25;->val$atts:Ljava/util/Vector;

    iget v2, p0, Lcom/vkontakte/android/NewPostActivity$25;->val$idx:I

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->access$11(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Vector;I)V

    .line 644
    return-void
.end method
