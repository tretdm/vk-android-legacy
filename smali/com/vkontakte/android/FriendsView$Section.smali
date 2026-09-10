.class Lcom/vkontakte/android/FriendsView$Section;
.super Ljava/lang/Object;
.source "FriendsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Section"
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public shortTitle:Ljava/lang/String;

.field public startPos:I

.field final synthetic this$0:Lcom/vkontakte/android/FriendsView;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FriendsView;)V
    .locals 1

    .prologue
    .line 414
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView$Section;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendsView$Section;->shortTitle:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/FriendsView$Section;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendsView$Section;-><init>(Lcom/vkontakte/android/FriendsView;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$Section;->shortTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$Section;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$Section;->shortTitle:Ljava/lang/String;

    goto :goto_0
.end method
