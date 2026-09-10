.class Lcom/vkontakte/android/VideoListView$11;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsGetById$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;

.field private final synthetic val$vf:Lcom/vkontakte/android/api/VideoFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$11;->this$0:Lcom/vkontakte/android/VideoListView;

    iput-object p2, p0, Lcom/vkontakte/android/VideoListView$11;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 546
    return-void
.end method

.method public success([Lcom/vkontakte/android/api/Group;)V
    .locals 4
    .param p1, "groups"    # [Lcom/vkontakte/android/api/Group;

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$11;->this$0:Lcom/vkontakte/android/VideoListView;

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView$11;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/VideoListView;->access$23(Lcom/vkontakte/android/VideoListView;Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    .line 540
    return-void
.end method
