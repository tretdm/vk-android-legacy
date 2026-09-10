.class Lcom/vkontakte/android/PhotoViewerActivity$23;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->showComments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 724
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$23;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v0, p1, p2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$20(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method
