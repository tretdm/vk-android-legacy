.class Lcom/vkontakte/android/ProfileView$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "act":Ljava/lang/String;
    const-string v6, "relation"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "id"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v7, "ProfileFragment"

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v7, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 178
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v6, "bdate"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801be

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v11}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v11}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameGen:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 106
    .local v2, "cal":Ljava/util/Calendar;
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v8

    iget v8, v8, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v12, v12}, Ljava/util/Calendar;->add(II)V

    .line 108
    :cond_2
    const-string v6, "beginTime"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    const-string v6, "allDay"

    invoke-virtual {v3, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v6, "rrule"

    const-string v7, "FREQ=YEARLY"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 113
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v0, :cond_4

    const-string v6, "relative"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "id"

    const-string v7, "relative"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string v7, "ProfileFragment"

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v7, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 117
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    const-string v6, "twitter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://twitter.com/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    :cond_5
    const-string v6, "facebook"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 120
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://facebook.com/profile.php?id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 121
    :cond_6
    const-string v6, "livejournal"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 122
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".livejournal.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    const-string v6, "instagram"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 124
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://instagram.com/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 125
    :cond_8
    const-string v6, "skype"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 127
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "skype:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?call"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 128
    :catch_0
    move-exception v5

    .line 129
    .local v5, "x":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0801bf

    invoke-static {v6, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 131
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_9
    const-string v6, "homePhone"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 132
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "tel:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    :cond_a
    const-string v6, "mobilePhone"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 134
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "tel:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 135
    :cond_b
    const-string v6, "website"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 136
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v4, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 137
    .local v4, "site":Ljava/lang/String;
    const-string v6, "http://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "https://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    :cond_c
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 140
    .end local v4    # "site":Ljava/lang/String;
    :cond_d
    const-string v6, "place"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 141
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "geo:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    :cond_e
    const-string v6, "time"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 143
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v6, "description"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v6, "beginTime"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    int-to-long v7, v7

    mul-long/2addr v7, v9

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    if-lez v6, :cond_f

    .line 149
    const-string v6, "endTime"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    int-to-long v7, v7

    mul-long/2addr v7, v9

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    :cond_f
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v6, "wiki"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 152
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "oid"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 156
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_11
    const-string v6, "status"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 157
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    if-eqz v6, :cond_12

    .line 158
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$2(Lcom/vkontakte/android/ProfileView;)V

    goto/16 :goto_0

    .line 159
    :cond_12
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v6

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_0

    .line 160
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Lcom/vkontakte/android/ProfileView;->access$3(Lcom/vkontakte/android/ProfileView;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    :cond_13
    const-string v6, "groups"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "uid"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801d8

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v10, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 166
    const-string v7, "GroupsFragment"

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v7, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 167
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_14
    const-string v6, "subscriptions"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 169
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "uid"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v6, "type"

    const/16 v7, 0xa

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0802a1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 172
    const-string v7, "UserListFragment"

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v7, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 173
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_15
    const-string v6, "docs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 175
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "oid"

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v7, "DocumentsFragment"

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$1;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {v7, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
