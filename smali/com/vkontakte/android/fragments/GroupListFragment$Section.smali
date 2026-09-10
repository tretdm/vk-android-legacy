.class Lcom/vkontakte/android/fragments/GroupListFragment$Section;
.super Ljava/lang/Object;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;
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
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field public shortTitle:Ljava/lang/String;

.field public startPos:I

.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->shortTitle:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$Section;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->shortTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->shortTitle:Ljava/lang/String;

    goto :goto_0
.end method
